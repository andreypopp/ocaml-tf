(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_event_selector__field_selector = {
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
(** advanced_event_selector__field_selector *)

type advanced_event_selector = {
  name : string prop option; [@option]  (** name *)
  field_selector : advanced_event_selector__field_selector list;
}
[@@deriving yojson_of]
(** advanced_event_selector *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  advanced_event_selector : advanced_event_selector list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudtrail_event_data_store *)

let advanced_event_selector__field_selector ?ends_with ?equals ?field
    ?not_ends_with ?not_equals ?not_starts_with ?starts_with () :
    advanced_event_selector__field_selector =
  {
    ends_with;
    equals;
    field;
    not_ends_with;
    not_equals;
    not_starts_with;
    starts_with;
  }

let advanced_event_selector ?name ~field_selector () :
    advanced_event_selector =
  { name; field_selector }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cloudtrail_event_data_store ?id ?kms_key_id
    ?multi_region_enabled ?organization_enabled ?retention_period
    ?tags ?tags_all ?termination_protection_enabled ?timeouts ~name
    ~advanced_event_selector () : aws_cloudtrail_event_data_store =
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

type t = {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  multi_region_enabled : bool prop;
  name : string prop;
  organization_enabled : bool prop;
  retention_period : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  termination_protection_enabled : bool prop;
}

let make ?id ?kms_key_id ?multi_region_enabled ?organization_enabled
    ?retention_period ?tags ?tags_all ?termination_protection_enabled
    ?timeouts ~name ~advanced_event_selector __id =
  let __type = "aws_cloudtrail_event_data_store" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       multi_region_enabled =
         Prop.computed __type __id "multi_region_enabled";
       name = Prop.computed __type __id "name";
       organization_enabled =
         Prop.computed __type __id "organization_enabled";
       retention_period =
         Prop.computed __type __id "retention_period";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       termination_protection_enabled =
         Prop.computed __type __id "termination_protection_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudtrail_event_data_store
        (aws_cloudtrail_event_data_store ?id ?kms_key_id
           ?multi_region_enabled ?organization_enabled
           ?retention_period ?tags ?tags_all
           ?termination_protection_enabled ?timeouts ~name
           ~advanced_event_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?multi_region_enabled
    ?organization_enabled ?retention_period ?tags ?tags_all
    ?termination_protection_enabled ?timeouts ~name
    ~advanced_event_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?multi_region_enabled ?organization_enabled
      ?retention_period ?tags ?tags_all
      ?termination_protection_enabled ?timeouts ~name
      ~advanced_event_selector __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
