(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type recording_group__exclusion_by_resource_types = {
  resource_types : string prop list option; [@option]
      (** resource_types *)
}
[@@deriving yojson_of]
(** recording_group__exclusion_by_resource_types *)

type recording_group__recording_strategy = {
  use_only : string prop option; [@option]  (** use_only *)
}
[@@deriving yojson_of]
(** recording_group__recording_strategy *)

type recording_group = {
  all_supported : bool prop option; [@option]  (** all_supported *)
  include_global_resource_types : bool prop option; [@option]
      (** include_global_resource_types *)
  resource_types : string prop list option; [@option]
      (** resource_types *)
  exclusion_by_resource_types :
    recording_group__exclusion_by_resource_types list;
  recording_strategy : recording_group__recording_strategy list;
}
[@@deriving yojson_of]
(** recording_group *)

type recording_mode__recording_mode_override = {
  description : string prop option; [@option]  (** description *)
  recording_frequency : string prop;  (** recording_frequency *)
  resource_types : string prop list;  (** resource_types *)
}
[@@deriving yojson_of]
(** recording_mode__recording_mode_override *)

type recording_mode = {
  recording_frequency : string prop option; [@option]
      (** recording_frequency *)
  recording_mode_override :
    recording_mode__recording_mode_override list;
}
[@@deriving yojson_of]
(** recording_mode *)

type aws_config_configuration_recorder = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  role_arn : string prop;  (** role_arn *)
  recording_group : recording_group list;
  recording_mode : recording_mode list;
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder *)

let recording_group__exclusion_by_resource_types ?resource_types () :
    recording_group__exclusion_by_resource_types =
  { resource_types }

let recording_group__recording_strategy ?use_only () :
    recording_group__recording_strategy =
  { use_only }

let recording_group ?all_supported ?include_global_resource_types
    ?resource_types ~exclusion_by_resource_types ~recording_strategy
    () : recording_group =
  {
    all_supported;
    include_global_resource_types;
    resource_types;
    exclusion_by_resource_types;
    recording_strategy;
  }

let recording_mode__recording_mode_override ?description
    ~recording_frequency ~resource_types () :
    recording_mode__recording_mode_override =
  { description; recording_frequency; resource_types }

let recording_mode ?recording_frequency ~recording_mode_override () :
    recording_mode =
  { recording_frequency; recording_mode_override }

let aws_config_configuration_recorder ?id ?name ~role_arn
    ~recording_group ~recording_mode () :
    aws_config_configuration_recorder =
  { id; name; role_arn; recording_group; recording_mode }

type t = {
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

let make ?id ?name ~role_arn ~recording_group ~recording_mode __id =
  let __type = "aws_config_configuration_recorder" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_configuration_recorder
        (aws_config_configuration_recorder ?id ?name ~role_arn
           ~recording_group ~recording_mode ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ~role_arn ~recording_group
    ~recording_mode __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ~role_arn ~recording_group ~recording_mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
