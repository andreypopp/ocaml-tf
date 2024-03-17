(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_connect_attachment__options = {
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_attachment__options *)

type aws_networkmanager_connect_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_attachment__timeouts *)

type aws_networkmanager_connect_attachment = {
  core_network_id : string prop;  (** core_network_id *)
  edge_location : string prop;  (** edge_location *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transport_attachment_id : string prop;
      (** transport_attachment_id *)
  options : aws_networkmanager_connect_attachment__options list;
  timeouts : aws_networkmanager_connect_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_attachment *)

let aws_networkmanager_connect_attachment ?id ?tags ?tags_all
    ?timeouts ~core_network_id ~edge_location
    ~transport_attachment_id ~options __resource_id =
  let __resource_type = "aws_networkmanager_connect_attachment" in
  let __resource =
    {
      core_network_id;
      edge_location;
      id;
      tags;
      tags_all;
      transport_attachment_id;
      options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connect_attachment __resource);
  ()
