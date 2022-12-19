import 'package:flutter/material.dart';

import '../../core/utils/enums.dart';

Widget screenSwatich(RequestState state, Widget body) {
  switch (state) {
    case RequestState.loading:
      return const Center(child: CircularProgressIndicator());

    case RequestState.loaded:
      return body;

    case RequestState.error:
      return const Center(child: Text("error"));
  }
}
