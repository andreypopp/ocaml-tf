(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connection__timeouts *)

type aws_networkmanager_connection = {
  connected_device_id : string prop;  (** connected_device_id *)
  connected_link_id : string prop option; [@option]
      (** connected_link_id *)
  description : string prop option; [@option]  (** description *)
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop option; [@option]  (** link_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_networkmanager_connection__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connection *)

let aws_networkmanager_connection ?connected_link_id ?description ?id
    ?link_id ?tags ?tags_all ?timeouts ~connected_device_id
    ~device_id ~global_network_id __resource_id =
  let __resource_type = "aws_networkmanager_connection" in
  let __resource =
    {
      connected_device_id;
      connected_link_id;
      description;
      device_id;
      global_network_id;
      id;
      link_id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connection __resource);
  ()
