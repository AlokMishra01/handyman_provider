import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:handyman_provider/core/models/document_types/document_types_model.dart';
import 'package:handyman_provider/core/models/documents/documents_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/document_repository.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';

class AddDocumentViewModel extends AppBaseViewModel {
  AddDocumentViewModel(this._logger, this._repository);

  final Logger _logger;
  final DocumentRepository _repository;

  DocumentTypesModel? model;
  DocumentTypeModel? selected;

  init(DocumentModel? model) {
    getData();
  }

  getData() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.documentTypes);
    if (res != null) {
      model = DocumentTypesModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getDocTypes();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.documentTypes);
      if (p != null) {
        model = DocumentTypesModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onSave() async {
    if (selected == null) return;
    loadingOverlay.show();
    final response = await _repository.addDoc(
      title: '',
      type: '',
      file: '',
    );
    loadingOverlay.dismiss();

    if (response is String) {
      snackBar.show(message: response);
    } else {
      appNavigator.pop();
    }
  }

  onEdit(int id) async {
    if (selected == null) return;
    loadingOverlay.show();
    final response = await _repository.addDoc(
      title: '',
      type: '',
      file: '',
      isUpdate: true,
    );
    loadingOverlay.dismiss();

    if (response is String) {
      snackBar.show(message: response);
    } else {
      appNavigator.pop();
    }
  }

  onSelect(DocumentTypeModel? value) {
    selected = value;
    notifyListeners();
  }

  onNavigate(Widget page) {
    appNavigator.navigateTo(page);
  }
}
