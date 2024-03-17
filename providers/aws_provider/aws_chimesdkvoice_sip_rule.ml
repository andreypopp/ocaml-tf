(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chimesdkvoice_sip_rule__target_applications = {
  aws_region : string;  (** aws_region *)
  priority : float;  (** priority *)
  sip_media_application_id : string;  (** sip_media_application_id *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_rule__target_applications *)

type aws_chimesdkvoice_sip_rule = {
  disabled : bool option; [@option]  (** disabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  trigger_type : string;  (** trigger_type *)
  trigger_value : string;  (** trigger_value *)
  target_applications :
    aws_chimesdkvoice_sip_rule__target_applications list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_rule *)

let aws_chimesdkvoice_sip_rule ?disabled ?id ~name ~trigger_type
    ~trigger_value ~target_applications __resource_id =
  let __resource_type = "aws_chimesdkvoice_sip_rule" in
  let __resource =
    {
      disabled;
      id;
      name;
      trigger_type;
      trigger_value;
      target_applications;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_sip_rule __resource);
  ()
