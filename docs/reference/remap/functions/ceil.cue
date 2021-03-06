package metadata

remap: functions: ceil: {
	category: "Number"
	description: """
		Rounds the `value` up to the specified `precision`.
		"""

	arguments: [
		{
			name:        "value"
			description: "The number to round up."
			required:    true
			type: ["integer", "float"]
		},
		{
			name:        "precision"
			description: "The number of decimal places to round to."
			required:    false
			default:     0
			type: ["integer"]
		},
	]
	internal_failure_reasons: []
	return: {
		types: ["integer", "float"]
		rules: [
			"If `precision` is `0`, then an integer is returned, otherwise a float is returned.",
		]
	}

	examples: [
		{
			title: "Round a number up (without precision)"
			source: #"""
				ceil(4.345)
				"""#
			return: 5.0
		},
		{
			title: "Round a number up (with precision)"
			source: #"""
				ceil(4.345, precision: 2)
				"""#
			return: 4.35
		},
	]
}
