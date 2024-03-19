(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_network_interface_sg_attachment = {
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  security_group_id : string prop;  (** security_group_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_network_interface_sg_attachment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let aws_network_interface_sg_attachment ?id ?timeouts
    ~network_interface_id ~security_group_id () :
    aws_network_interface_sg_attachment =
  { id; network_interface_id; security_group_id; timeouts }

type t = {
  id : string prop;
  network_interface_id : string prop;
  security_group_id : string prop;
}

let register ?tf_module ?id ?timeouts ~network_interface_id
    ~security_group_id __resource_id =
  let __resource_type = "aws_network_interface_sg_attachment" in
  let __resource =
    aws_network_interface_sg_attachment ?id ?timeouts
      ~network_interface_id ~security_group_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface_sg_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       security_group_id =
         Prop.computed __resource_type __resource_id
           "security_group_id";
     }
      : t)
  in
  __resource_attributes
