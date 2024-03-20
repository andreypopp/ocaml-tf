(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_applications = {
  aws_region : string prop;  (** aws_region *)
  priority : float prop;  (** priority *)
  sip_media_application_id : string prop;
      (** sip_media_application_id *)
}
[@@deriving yojson_of]
(** target_applications *)

type aws_chimesdkvoice_sip_rule = {
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  trigger_type : string prop;  (** trigger_type *)
  trigger_value : string prop;  (** trigger_value *)
  target_applications : target_applications list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_rule *)

let target_applications ~aws_region ~priority
    ~sip_media_application_id () : target_applications =
  { aws_region; priority; sip_media_application_id }

let aws_chimesdkvoice_sip_rule ?disabled ?id ~name ~trigger_type
    ~trigger_value ~target_applications () :
    aws_chimesdkvoice_sip_rule =
  {
    disabled;
    id;
    name;
    trigger_type;
    trigger_value;
    target_applications;
  }

type t = {
  disabled : bool prop;
  id : string prop;
  name : string prop;
  trigger_type : string prop;
  trigger_value : string prop;
}

let make ?disabled ?id ~name ~trigger_type ~trigger_value
    ~target_applications __id =
  let __type = "aws_chimesdkvoice_sip_rule" in
  let __attrs =
    ({
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       trigger_type = Prop.computed __type __id "trigger_type";
       trigger_value = Prop.computed __type __id "trigger_value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_sip_rule
        (aws_chimesdkvoice_sip_rule ?disabled ?id ~name ~trigger_type
           ~trigger_value ~target_applications ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ~name ~trigger_type
    ~trigger_value ~target_applications __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ~name ~trigger_type ~trigger_value
      ~target_applications __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
