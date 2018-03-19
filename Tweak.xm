@interface _UIBatteryView : UIView
@property NSInteger chargingState;
@property CGFloat chargePercent;
@end

%hook _UIBatteryView
/*
- (UIColor *)_batteryColor {
	if(self.chargingState == 0) {
		// Not charging, green
		return [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
	}
	else {
		// Charging, blue
		return [UIColor colorWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];
	}
}
*/
- (UIColor *)_batteryColor {
	CGFloat chargePercent = self.chargePercent;
	if(chargePercent >= 0.95) {
		return [UIColor colorWithRed:0.08 green:0.71 blue:1.00 alpha:1.0];
	}
	else if(chargePercent >= 0.90) {
		return [UIColor colorWithRed:0.43 green:0.78 blue:1.00 alpha:1.0];
	}
	else if(chargePercent >= 0.85) {
		return [UIColor colorWithRed:0.59 green:0.91 blue:1.00 alpha:1.0];
	}
	else if(chargePercent >= 0.80) {
		return [UIColor colorWithRed:0.47 green:1.00 blue:0.99 alpha:1.0];
	}
	else if(chargePercent >= 0.75) {
		return [UIColor colorWithRed:0.38 green:1.00 blue:0.79 alpha:1.0];
	}
	else if(chargePercent >= 0.70) {
		return [UIColor colorWithRed:0.40 green:0.90 blue:0.71 alpha:1.0];
	}
	else if(chargePercent >= 0.65) {
		return [UIColor colorWithRed:0.26 green:0.96 blue:0.54 alpha:1.0];
	}
	else if(chargePercent >= 0.60) {
		return [UIColor colorWithRed:0.26 green:1.00 blue:0.45 alpha:1.0];
	}
	else if(chargePercent >= 0.55) {
		return [UIColor colorWithRed:0.56 green:0.87 blue:0.21 alpha:1.0];
	}
	else if(chargePercent >= 0.50) {
		return [UIColor colorWithRed:0.84 green:0.95 blue:0.22 alpha:1.0];
	}
	else if(chargePercent >= 0.45) {
		return [UIColor colorWithRed:0.93 green:0.96 blue:0.21 alpha:1.0];
	}
	else if(chargePercent >= 0.40) {
		return [UIColor colorWithRed:0.97 green:0.92 blue:0.20 alpha:1.0];
	}
	else if(chargePercent >= 0.35) {
		return [UIColor colorWithRed:0.95 green:0.77 blue:0.19 alpha:1.0];
	}
	else if(chargePercent >= 0.30) {
		return [UIColor colorWithRed:1.00 green:0.76 blue:0.18 alpha:1.0];
	}
	else if(chargePercent >= 0.25) {
		return [UIColor colorWithRed:0.98 green:0.68 blue:0.19 alpha:1.0];
	}
	else if(chargePercent >= 0.20) {
		return [UIColor colorWithRed:0.96 green:0.57 blue:0.20 alpha:1.0];
	}
	else if(chargePercent >= 0.15) {
		return [UIColor colorWithRed:0.95 green:0.48 blue:0.20 alpha:1.0];
	}
	else if(chargePercent >= 0.10) {
		return [UIColor colorWithRed:0.93 green:0.39 blue:0.21 alpha:1.0];
	}
	else if(chargePercent >= 0.5) {
		return [UIColor colorWithRed:0.91 green:0.31 blue:0.22 alpha:1.0];
	}
	else {
		return [UIColor colorWithRed:0.89 green:0.24 blue:0.22 alpha:1.0];
	}
}

%end
