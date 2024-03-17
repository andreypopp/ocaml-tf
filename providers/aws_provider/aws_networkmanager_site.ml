(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_site__location = {
  address : string option; [@option]  (** address *)
  latitude : string option; [@option]  (** latitude *)
  longitude : string option; [@option]  (** longitude *)
}
[@@deriving yojson_of]
(** aws_networkmanager_site__location *)

type aws_networkmanager_site__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_site__timeouts *)

type aws_networkmanager_site = {
  description : string option; [@option]  (** description *)
  global_network_id : string;  (** global_network_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  location : aws_networkmanager_site__location list;
  timeouts : aws_networkmanager_site__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_site *)

let aws_networkmanager_site ?description ?tags ?timeouts
    ~global_network_id ~location __resource_id =
  let __resource_type = "aws_networkmanager_site" in
  let __resource =
    { description; global_network_id; tags; location; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_site __resource);
  ()
