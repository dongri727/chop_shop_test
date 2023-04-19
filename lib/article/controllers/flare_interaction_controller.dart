import 'package:flare_flutter/flare.dart' as flare;
import 'package:nima/nima/math/vec2d.dart';

/// Controllers are used in our Flare library to provide custom behaviors for animations.
abstract class FlareInteractionController {
  /// This'll be called upon initialization: use it to set up the controller.
  /// Generally that means grabbing the references to the Actor nodes that
  /// will be performing a custom action.
  void initialize(flare.FlutterActorArtboard artboard);

  /// This callback is used to advance the controller when the animation itself is advancing.
  bool advance(
      flare.FlutterActorArtboard artboard, Vec2D touchPosition, double elapsed);
}
