(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trigger = {
  branches : string prop list option; [@option]  (** branches *)
  custom_data : string prop option; [@option]  (** custom_data *)
  destination_arn : string prop;  (** destination_arn *)
  events : string prop list;  (** events *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** trigger *)

type aws_codecommit_trigger = {
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
  trigger : trigger list;
}
[@@deriving yojson_of]
(** aws_codecommit_trigger *)

let trigger ?branches ?custom_data ~destination_arn ~events ~name ()
    : trigger =
  { branches; custom_data; destination_arn; events; name }

let aws_codecommit_trigger ?id ~repository_name ~trigger () :
    aws_codecommit_trigger =
  { id; repository_name; trigger }

type t = {
  configuration_id : string prop;
  id : string prop;
  repository_name : string prop;
}

let make ?id ~repository_name ~trigger __id =
  let __type = "aws_codecommit_trigger" in
  let __attrs =
    ({
       configuration_id =
         Prop.computed __type __id "configuration_id";
       id = Prop.computed __type __id "id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_trigger
        (aws_codecommit_trigger ?id ~repository_name ~trigger ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository_name ~trigger __id =
  let (r : _ Tf_core.resource) =
    make ?id ~repository_name ~trigger __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
