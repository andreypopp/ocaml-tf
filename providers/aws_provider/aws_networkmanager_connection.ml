(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connection__timeouts *)

type aws_networkmanager_connection = {
  connected_device_id : string;  (** connected_device_id *)
  connected_link_id : string option; [@option]
      (** connected_link_id *)
  description : string option; [@option]  (** description *)
  device_id : string;  (** device_id *)
  global_network_id : string;  (** global_network_id *)
  link_id : string option; [@option]  (** link_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_networkmanager_connection__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connection *)

let aws_networkmanager_connection ?connected_link_id ?description
    ?link_id ?tags ?timeouts ~connected_device_id ~device_id
    ~global_network_id __resource_id =
  let __resource_type = "aws_networkmanager_connection" in
  let __resource =
    {
      connected_device_id;
      connected_link_id;
      description;
      device_id;
      global_network_id;
      link_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connection __resource);
  ()
