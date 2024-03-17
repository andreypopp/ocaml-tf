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

let aws_network_interface_attachment ?id ~device_index ~instance_id
    ~network_interface_id __resource_id =
  let __resource_type = "aws_network_interface_attachment" in
  let __resource =
    { device_index; id; instance_id; network_interface_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface_attachment __resource);
  ()
