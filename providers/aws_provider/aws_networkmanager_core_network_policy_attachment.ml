(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_core_network_policy_attachment__timeouts = {
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network_policy_attachment__timeouts *)

type aws_networkmanager_core_network_policy_attachment = {
  core_network_id : string;  (** core_network_id *)
  id : string option; [@option]  (** id *)
  policy_document : string;  (** policy_document *)
  timeouts :
    aws_networkmanager_core_network_policy_attachment__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network_policy_attachment *)

let aws_networkmanager_core_network_policy_attachment ?id ?timeouts
    ~core_network_id ~policy_document __resource_id =
  let __resource_type =
    "aws_networkmanager_core_network_policy_attachment"
  in
  let __resource =
    { core_network_id; id; policy_document; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_core_network_policy_attachment
       __resource);
  ()
