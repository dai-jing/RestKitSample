RestKitSample
=============

RestKit Sample with CocoaPods

Steps using RestKit:

Step 1: Create models.

e.g.

  1. create class `DJMain` with property `currentTemp`.
  2. create `RKObjectMapping` for this model class.
  

  `RKObjectMapping *mapping = [[RKObjectMapping alloc] initWithClass:[self class]];`
