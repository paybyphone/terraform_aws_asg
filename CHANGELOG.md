## v0.2.0

BREAKING CHANGES:

 * Image searching behaviour has changed. You can now search on other search
   types, not just tag, although this is still the default behaviour. However,
   to reflect the changes, `image_tag_value` is now `image_filter_value`.

NEW IMAGE SEARCHING FEATURE IN DETAIL:

 * As mentioned, images can now be searched on via other filter types. For a
   full list, see [here][1]. Filter type is now controlled with
   `image_filter_type`. If this is `tag` (the default), `image_tag_name` defines
   the tag name to use in the filter. `image_filter_value` defines the value to
   search on for the filter type defined. `image_owner` has also been added to
   help lock down search results - to help maintain expected behaviour with
   older versions, the default is `self`.

[1]: http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html

OTHER FEATURES:

 * `user_data` can now be supplied to the instance.
 * By default, outbound traffic is now allowed on the created security group for
   the ASG. This helps facilitate bootstrapping and general interoperability
   expectations of the instance without compromising security (inbound is still
   restricted). You can change this behaviour back to restricted to setting
   `restrict_outbound_traffic` to `true`.

## v0.1.1

Fixed rolling update issues. Target group name generation is now independent of
the launch configuration name.

## v0.1.0

Initial release.
