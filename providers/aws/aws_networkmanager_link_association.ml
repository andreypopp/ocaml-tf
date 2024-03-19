(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_link_association = {
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop;  (** link_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_link_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_link_association ?id ?timeouts ~device_id
    ~global_network_id ~link_id () :
    aws_networkmanager_link_association =
  { device_id; global_network_id; id; link_id; timeouts }

type t = {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
}

let register ?tf_module ?id ?timeouts ~device_id ~global_network_id
    ~link_id __resource_id =
  let __resource_type = "aws_networkmanager_link_association" in
  let __resource =
    aws_networkmanager_link_association ?id ?timeouts ~device_id
      ~global_network_id ~link_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_link_association __resource);
  let __resource_attributes =
    ({
       device_id =
         Prop.computed __resource_type __resource_id "device_id";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       link_id =
         Prop.computed __resource_type __resource_id "link_id";
     }
      : t)
  in
  __resource_attributes
