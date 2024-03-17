(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_network_interface__attachment = {
  attachment_id : string;  (** attachment_id *)
  device_index : float;  (** device_index *)
  instance : string;  (** instance *)
}
[@@deriving yojson_of]
(** aws_network_interface__attachment *)

type aws_network_interface = {
  description : string option; [@option]  (** description *)
  ipv6_address_list_enabled : bool option; [@option]
      (** ipv6_address_list_enabled *)
  private_ip_list_enabled : bool option; [@option]
      (** private_ip_list_enabled *)
  source_dest_check : bool option; [@option]
      (** source_dest_check *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  attachment : aws_network_interface__attachment list;
}
[@@deriving yojson_of]
(** aws_network_interface *)

let aws_network_interface ?description ?ipv6_address_list_enabled
    ?private_ip_list_enabled ?source_dest_check ?tags ~subnet_id
    ~attachment __resource_id =
  let __resource_type = "aws_network_interface" in
  let __resource =
    {
      description;
      ipv6_address_list_enabled;
      private_ip_list_enabled;
      source_dest_check;
      subnet_id;
      tags;
      attachment;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface __resource);
  ()
