(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_termination = {
  calling_regions : string list;  (** calling_regions *)
  cidr_allow_list : string list;  (** cidr_allow_list *)
  cps_limit : float option; [@option]  (** cps_limit *)
  default_phone_number : string option; [@option]
      (** default_phone_number *)
  disabled : bool option; [@option]  (** disabled *)
  id : string option; [@option]  (** id *)
  voice_connector_id : string;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_termination *)

let aws_chime_voice_connector_termination ?cps_limit
    ?default_phone_number ?disabled ?id ~calling_regions
    ~cidr_allow_list ~voice_connector_id __resource_id =
  let __resource_type = "aws_chime_voice_connector_termination" in
  let __resource =
    {
      calling_regions;
      cidr_allow_list;
      cps_limit;
      default_phone_number;
      disabled;
      id;
      voice_connector_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_termination __resource);
  ()
