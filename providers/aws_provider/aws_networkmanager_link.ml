(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_link__bandwidth = {
  download_speed : float option; [@option]  (** download_speed *)
  upload_speed : float option; [@option]  (** upload_speed *)
}
[@@deriving yojson_of]
(** aws_networkmanager_link__bandwidth *)

type aws_networkmanager_link__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_link__timeouts *)

type aws_networkmanager_link = {
  description : string option; [@option]  (** description *)
  global_network_id : string;  (** global_network_id *)
  provider_name : string option; [@option]  (** provider_name *)
  site_id : string;  (** site_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  bandwidth : aws_networkmanager_link__bandwidth list;
  timeouts : aws_networkmanager_link__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_link *)

let aws_networkmanager_link ?description ?provider_name ?tags ?type_
    ?timeouts ~global_network_id ~site_id ~bandwidth __resource_id =
  let __resource_type = "aws_networkmanager_link" in
  let __resource =
    {
      description;
      global_network_id;
      provider_name;
      site_id;
      tags;
      type_;
      bandwidth;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_link __resource);
  ()
