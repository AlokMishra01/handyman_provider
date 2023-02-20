import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/documents/documents_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/document_repository.dart';

import '/core/base/base_view_model.dart';

class DocumentsViewModel extends AppBaseViewModel {
  DocumentsViewModel(this._logger, this._repository);

  final Logger _logger;
  final DocumentRepository _repository;
  DocumentsModel? model;

  init() {
    get();
  }

  get() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.documents);
    if (res != null) {
      model = DocumentsModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getMyDocs();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.documents);
      if (p != null) {
        model = DocumentsModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onDelete(int id) async {
    loadingOverlay.show();
    final response = await _repository.removeDoc(id);
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.documents);
      if (p != null) {
        model = DocumentsModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init();
  }
}
