(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_core_network_policy_attachment = {
  core_network_id : string prop;  (** core_network_id *)
  id : string prop option; [@option]  (** id *)
  policy_document : string prop;  (** policy_document *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network_policy_attachment *)

let timeouts ?update () : timeouts = { update }

let aws_networkmanager_core_network_policy_attachment ?id ?timeouts
    ~core_network_id ~policy_document () :
    aws_networkmanager_core_network_policy_attachment =
  { core_network_id; id; policy_document; timeouts }

type t = {
  core_network_id : string prop;
  id : string prop;
  policy_document : string prop;
  state : string prop;
}

let register ?tf_module ?id ?timeouts ~core_network_id
    ~policy_document __resource_id =
  let __resource_type =
    "aws_networkmanager_core_network_policy_attachment"
  in
  let __resource =
    aws_networkmanager_core_network_policy_attachment ?id ?timeouts
      ~core_network_id ~policy_document ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_core_network_policy_attachment
       __resource);
  let __resource_attributes =
    ({
       core_network_id =
         Prop.computed __resource_type __resource_id
           "core_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       policy_document =
         Prop.computed __resource_type __resource_id
           "policy_document";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
