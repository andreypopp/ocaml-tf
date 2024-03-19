(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?disabled ?id ~name ~trigger_type
    ~trigger_value ~target_applications __resource_id =
  let __resource_type = "aws_chimesdkvoice_sip_rule" in
  let __resource =
    aws_chimesdkvoice_sip_rule ?disabled ?id ~name ~trigger_type
      ~trigger_value ~target_applications ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_sip_rule __resource);
  let __resource_attributes =
    ({
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       trigger_type =
         Prop.computed __resource_type __resource_id "trigger_type";
       trigger_value =
         Prop.computed __resource_type __resource_id "trigger_value";
     }
      : t)
  in
  __resource_attributes
