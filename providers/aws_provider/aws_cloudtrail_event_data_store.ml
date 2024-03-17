(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudtrail_event_data_store__advanced_event_selector__field_selector = {
  ends_with : string prop list option; [@option]  (** ends_with *)
  equals : string prop list option; [@option]  (** equals *)
  field : string prop option; [@option]  (** field *)
  not_ends_with : string prop list option; [@option]
      (** not_ends_with *)
  not_equals : string prop list option; [@option]  (** not_equals *)
  not_starts_with : string prop list option; [@option]
      (** not_starts_with *)
  starts_with : string prop list option; [@option]  (** starts_with *)
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store__advanced_event_selector__field_selector *)

type aws_cloudtrail_event_data_store__advanced_event_selector = {
  name : string prop option; [@option]  (** name *)
  field_selector :
    aws_cloudtrail_event_data_store__advanced_event_selector__field_selector
    list;
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store__advanced_event_selector *)

type aws_cloudtrail_event_data_store__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store__timeouts *)

type aws_cloudtrail_event_data_store = {
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  multi_region_enabled : bool prop option; [@option]
      (** multi_region_enabled *)
  name : string prop;  (** name *)
  organization_enabled : bool prop option; [@option]
      (** organization_enabled *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  termination_protection_enabled : bool prop option; [@option]
      (** termination_protection_enabled *)
  advanced_event_selector :
    aws_cloudtrail_event_data_store__advanced_event_selector list;
  timeouts : aws_cloudtrail_event_data_store__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store *)

let aws_cloudtrail_event_data_store ?id ?kms_key_id
    ?multi_region_enabled ?organization_enabled ?retention_period
    ?tags ?tags_all ?termination_protection_enabled ?timeouts ~name
    ~advanced_event_selector __resource_id =
  let __resource_type = "aws_cloudtrail_event_data_store" in
  let __resource =
    {
      id;
      kms_key_id;
      multi_region_enabled;
      name;
      organization_enabled;
      retention_period;
      tags;
      tags_all;
      termination_protection_enabled;
      advanced_event_selector;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudtrail_event_data_store __resource);
  ()
