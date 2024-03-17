(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_network_interface_attachment = {
  device_index : float prop;  (** device_index *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]
(** aws_network_interface_attachment *)

type t = {
  attachment_id : string prop;
  device_index : float prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  status : string prop;
}

let aws_network_interface_attachment ?id ~device_index ~instance_id
    ~network_interface_id __resource_id =
  let __resource_type = "aws_network_interface_attachment" in
  let __resource =
    ({ device_index; id; instance_id; network_interface_id }
      : aws_network_interface_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface_attachment __resource);
  let __resource_attributes =
    ({
       attachment_id =
         Prop.computed __resource_type __resource_id "attachment_id";
       device_index =
         Prop.computed __resource_type __resource_id "device_index";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
