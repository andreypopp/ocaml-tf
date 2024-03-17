(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_connect_attachment__options = {
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_attachment__options *)

type aws_networkmanager_connect_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_attachment__timeouts *)

type aws_networkmanager_connect_attachment = {
  core_network_id : string;  (** core_network_id *)
  edge_location : string;  (** edge_location *)
  tags : (string * string) list option; [@option]  (** tags *)
  transport_attachment_id : string;  (** transport_attachment_id *)
  options : aws_networkmanager_connect_attachment__options list;
  timeouts : aws_networkmanager_connect_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_attachment *)

let aws_networkmanager_connect_attachment ?tags ?timeouts
    ~core_network_id ~edge_location ~transport_attachment_id ~options
    __resource_id =
  let __resource_type = "aws_networkmanager_connect_attachment" in
  let __resource =
    {
      core_network_id;
      edge_location;
      tags;
      transport_attachment_id;
      options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connect_attachment __resource);
  ()
