(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudtrail_event_data_store__advanced_event_selector__field_selector = {
  ends_with : string list option; [@option]  (** ends_with *)
  equals : string list option; [@option]  (** equals *)
  field : string option; [@option]  (** field *)
  not_ends_with : string list option; [@option]  (** not_ends_with *)
  not_equals : string list option; [@option]  (** not_equals *)
  not_starts_with : string list option; [@option]
      (** not_starts_with *)
  starts_with : string list option; [@option]  (** starts_with *)
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store__advanced_event_selector__field_selector *)

type aws_cloudtrail_event_data_store__advanced_event_selector = {
  name : string option; [@option]  (** name *)
  field_selector :
    aws_cloudtrail_event_data_store__advanced_event_selector__field_selector
    list;
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store__advanced_event_selector *)

type aws_cloudtrail_event_data_store__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store__timeouts *)

type aws_cloudtrail_event_data_store = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  multi_region_enabled : bool option; [@option]
      (** multi_region_enabled *)
  name : string;  (** name *)
  organization_enabled : bool option; [@option]
      (** organization_enabled *)
  retention_period : float option; [@option]  (** retention_period *)
  tags : (string * string) list option; [@option]  (** tags *)
  termination_protection_enabled : bool option; [@option]
      (** termination_protection_enabled *)
  advanced_event_selector :
    aws_cloudtrail_event_data_store__advanced_event_selector list;
  timeouts : aws_cloudtrail_event_data_store__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store *)

let aws_cloudtrail_event_data_store ?kms_key_id ?multi_region_enabled
    ?organization_enabled ?retention_period ?tags
    ?termination_protection_enabled ?timeouts ~name
    ~advanced_event_selector __resource_id =
  let __resource_type = "aws_cloudtrail_event_data_store" in
  let __resource =
    {
      kms_key_id;
      multi_region_enabled;
      name;
      organization_enabled;
      retention_period;
      tags;
      termination_protection_enabled;
      advanced_event_selector;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudtrail_event_data_store __resource);
  ()
