RestKitSample
=============

RestKit Sample with CocoaPods

Steps using RestKit:

Step 1: Create models.

e.g.

  1. create class `DJMain` with property `currentTemp`.
  2. create `RKObjectMapping` for this model class. "\n"
  `RKObjectMapping *mapping = [[RKObjectMapping alloc] initWithClass:[self class]];`
  3. configure mapping.
  // temp is the key of JSON data get from webservice, currentTemp is the property of the class
  `[mapping addAttributeMappingsFromDictionary:@{@"temp" : @"currentTemp"}];`
