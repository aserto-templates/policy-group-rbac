package rbac.is_in_group

allowed {
	ds.check_relation({
		"subject": {
			"type": "user",
			"key": input.user.key
		},
		"relation": {
			"object_type": "group",
			"name": "member"
		},
		"object": {
			"type": "group",
			"key": input.resource.group
		}
	})
}
