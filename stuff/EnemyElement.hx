package stuff;

using stuff.UtilShit;

@:publicFields
class EnemyElement extends DanRunElement {
  var type:Int128;
  var strengthAcceleration:Int128;
  var speedAcceleration:Int128;
  var size:Int128;
  var placementX:Int;
  public function new() {
    super();

    type = Std.int(Math.random() * UtilShit.level());//MathD.Random(0, UtilShit.level());
    strengthAcceleration = Std.int(Math.random() * UtilShit.level());
    speedAcceleration = Std.int(Math.random() * UtilShit.level());
    size = Std.int(Math.random() * UtilShit.level());
    placementX = Std.int(Math.random() * Map.BOARD_WIDTH);

    TrackerFile.putTime();
    TrackerFile.addEnemyElement(this);
    TrackerFile.forfeitElement();
  }
}