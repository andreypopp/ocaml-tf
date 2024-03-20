(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type thing_group_indexing_configuration__custom_field = {
  name : string prop option; [@option]  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** thing_group_indexing_configuration__custom_field *)

type thing_group_indexing_configuration__managed_field = {
  name : string prop option; [@option]  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** thing_group_indexing_configuration__managed_field *)

type thing_group_indexing_configuration = {
  thing_group_indexing_mode : string prop;
      (** thing_group_indexing_mode *)
  custom_field :
    thing_group_indexing_configuration__custom_field list;
  managed_field :
    thing_group_indexing_configuration__managed_field list;
}
[@@deriving yojson_of]
(** thing_group_indexing_configuration *)

type thing_indexing_configuration__custom_field = {
  name : string prop option; [@option]  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** thing_indexing_configuration__custom_field *)

type thing_indexing_configuration__filter = {
  named_shadow_names : string prop list option; [@option]
      (** named_shadow_names *)
}
[@@deriving yojson_of]
(** thing_indexing_configuration__filter *)

type thing_indexing_configuration__managed_field = {
  name : string prop option; [@option]  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** thing_indexing_configuration__managed_field *)

type thing_indexing_configuration = {
  device_defender_indexing_mode : string prop option; [@option]
      (** device_defender_indexing_mode *)
  named_shadow_indexing_mode : string prop option; [@option]
      (** named_shadow_indexing_mode *)
  thing_connectivity_indexing_mode : string prop option; [@option]
      (** thing_connectivity_indexing_mode *)
  thing_indexing_mode : string prop;  (** thing_indexing_mode *)
  custom_field : thing_indexing_configuration__custom_field list;
  filter : thing_indexing_configuration__filter list;
  managed_field : thing_indexing_configuration__managed_field list;
}
[@@deriving yojson_of]
(** thing_indexing_configuration *)

type aws_iot_indexing_configuration = {
  id : string prop option; [@option]  (** id *)
  thing_group_indexing_configuration :
    thing_group_indexing_configuration list;
  thing_indexing_configuration : thing_indexing_configuration list;
}
[@@deriving yojson_of]
(** aws_iot_indexing_configuration *)

let thing_group_indexing_configuration__custom_field ?name ?type_ ()
    : thing_group_indexing_configuration__custom_field =
  { name; type_ }

let thing_group_indexing_configuration__managed_field ?name ?type_ ()
    : thing_group_indexing_configuration__managed_field =
  { name; type_ }

let thing_group_indexing_configuration ~thing_group_indexing_mode
    ~custom_field ~managed_field () :
    thing_group_indexing_configuration =
  { thing_group_indexing_mode; custom_field; managed_field }

let thing_indexing_configuration__custom_field ?name ?type_ () :
    thing_indexing_configuration__custom_field =
  { name; type_ }

let thing_indexing_configuration__filter ?named_shadow_names () :
    thing_indexing_configuration__filter =
  { named_shadow_names }

let thing_indexing_configuration__managed_field ?name ?type_ () :
    thing_indexing_configuration__managed_field =
  { name; type_ }

let thing_indexing_configuration ?device_defender_indexing_mode
    ?named_shadow_indexing_mode ?thing_connectivity_indexing_mode
    ~thing_indexing_mode ~custom_field ~filter ~managed_field () :
    thing_indexing_configuration =
  {
    device_defender_indexing_mode;
    named_shadow_indexing_mode;
    thing_connectivity_indexing_mode;
    thing_indexing_mode;
    custom_field;
    filter;
    managed_field;
  }

let aws_iot_indexing_configuration ?id
    ~thing_group_indexing_configuration ~thing_indexing_configuration
    () : aws_iot_indexing_configuration =
  {
    id;
    thing_group_indexing_configuration;
    thing_indexing_configuration;
  }

type t = { id : string prop }

let make ?id ~thing_group_indexing_configuration
    ~thing_indexing_configuration __id =
  let __type = "aws_iot_indexing_configuration" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_indexing_configuration
        (aws_iot_indexing_configuration ?id
           ~thing_group_indexing_configuration
           ~thing_indexing_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~thing_group_indexing_configuration
    ~thing_indexing_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~thing_group_indexing_configuration
      ~thing_indexing_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
