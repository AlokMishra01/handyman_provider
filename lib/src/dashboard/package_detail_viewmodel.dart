import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/all_services/service_by_id_model.dart';
import 'package:handyman_provider/core/models/all_services/service_package_model.dart';
import 'package:handyman_provider/core/models/cart/cart_model.dart';
import 'package:handyman_provider/core/repositories/cart_repository.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';

import '/core/base/base_view_model.dart';

class ServiceDetailsViewModel extends AppBaseViewModel {
  ServiceDetailsViewModel(this._logger, this._repository, this._cartRepository);

  final Logger _logger;
  final ProfileRepository _repository;
  final CartRepository _cartRepository;
  late ServicePackageModel? model;

  late ServiceIDModel temp;

  CartModel? cart;

  init(ServiceIDModel m) {
    temp = m;
    get(m.id);
  }

  get(int id) async {
    model = null;
    notifyListeners();
    loadingOverlay.show();
    model = await _repository.getPackageDetails(id);
    cart = await _cartRepository.getCartItems();
    notifyListeners();
    loadingOverlay.dismiss();
  }

  addToCart(dynamic data) async {
    loadingOverlay.show();

    if (data is Package) {
      _cartRepository.addItem(
        item: Service(
          quantity: 1,
          id: data.id,
          price: double.parse(data.cost).toInt(),
          title: data.title,
          type: 1,
          discount: double.parse(data.discount).toInt(),
          psid: 0,
          question: [],
        ),
      );
    }
    cart = await _cartRepository.getCartItems();
    notifyListeners();
    loadingOverlay.dismiss();
  }

  increment(int index) async {
    loadingOverlay.show();
    _cartRepository.increment(index: index);
    cart = await _cartRepository.getCartItems();
    notifyListeners();
    loadingOverlay.dismiss();
  }

  decrement(int index) async {
    loadingOverlay.show();
    _cartRepository.decrement(index: index);
    cart = await _cartRepository.getCartItems();
    notifyListeners();
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init(temp);
  }
}
