(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type voice_connector = {
  cdr_bucket : string prop option; [@option]  (** cdr_bucket *)
}
[@@deriving yojson_of]
(** voice_connector *)

type aws_chimesdkvoice_global_settings = {
  id : string prop option; [@option]  (** id *)
  voice_connector : voice_connector list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_global_settings *)

let voice_connector ?cdr_bucket () : voice_connector = { cdr_bucket }

let aws_chimesdkvoice_global_settings ?id ~voice_connector () :
    aws_chimesdkvoice_global_settings =
  { id; voice_connector }

type t = { id : string prop }

let make ?id ~voice_connector __id =
  let __type = "aws_chimesdkvoice_global_settings" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_global_settings
        (aws_chimesdkvoice_global_settings ?id ~voice_connector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~voice_connector __id =
  let (r : _ Tf_core.resource) = make ?id ~voice_connector __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
