(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_termination = {
  calling_regions : string prop list;  (** calling_regions *)
  cidr_allow_list : string prop list;  (** cidr_allow_list *)
  cps_limit : float prop option; [@option]  (** cps_limit *)
  default_phone_number : string prop option; [@option]
      (** default_phone_number *)
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination *)

type t = {
  calling_regions : string list prop;
  cidr_allow_list : string list prop;
  cps_limit : float prop;
  default_phone_number : string prop;
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let aws_chime_voice_connector_termination ?cps_limit
    ?default_phone_number ?disabled ?id ~calling_regions
    ~cidr_allow_list ~voice_connector_id __resource_id =
  let __resource_type = "aws_chime_voice_connector_termination" in
  let __resource =
    ({
       calling_regions;
       cidr_allow_list;
       cps_limit;
       default_phone_number;
       disabled;
       id;
       voice_connector_id;
     }
      : aws_chime_voice_connector_termination)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_termination __resource);
  let __resource_attributes =
    ({
       calling_regions =
         Prop.computed __resource_type __resource_id
           "calling_regions";
       cidr_allow_list =
         Prop.computed __resource_type __resource_id
           "cidr_allow_list";
       cps_limit =
         Prop.computed __resource_type __resource_id "cps_limit";
       default_phone_number =
         Prop.computed __resource_type __resource_id
           "default_phone_number";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       id = Prop.computed __resource_type __resource_id "id";
       voice_connector_id =
         Prop.computed __resource_type __resource_id
           "voice_connector_id";
     }
      : t)
  in
  __resource_attributes
