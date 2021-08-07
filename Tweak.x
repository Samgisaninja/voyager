%hook NSDateFormatter

-(void)setDateFormat:(NSString*)arg1{
	if ([arg1 containsString:@"UTCzulu"]) {
		[self setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
		%orig([arg1 stringByReplacingOccurrencesOfString:@"UTCzulu" withString:@""]);
	} else {
		%orig;
	}
}

%end