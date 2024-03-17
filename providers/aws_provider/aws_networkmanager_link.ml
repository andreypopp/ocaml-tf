(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_link__bandwidth = {
  download_speed : float prop option; [@option]
      (** download_speed *)
  upload_speed : float prop option; [@option]  (** upload_speed *)
}
[@@deriving yojson_of]
(** aws_networkmanager_link__bandwidth *)

type aws_networkmanager_link__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_link__timeouts *)

type aws_networkmanager_link = {
  description : string prop option; [@option]  (** description *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  provider_name : string prop option; [@option]  (** provider_name *)
  site_id : string prop;  (** site_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  bandwidth : aws_networkmanager_link__bandwidth list;
  timeouts : aws_networkmanager_link__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_link *)

let aws_networkmanager_link ?description ?id ?provider_name ?tags
    ?tags_all ?type_ ?timeouts ~global_network_id ~site_id ~bandwidth
    __resource_id =
  let __resource_type = "aws_networkmanager_link" in
  let __resource =
    {
      description;
      global_network_id;
      id;
      provider_name;
      site_id;
      tags;
      tags_all;
      type_;
      bandwidth;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_link __resource);
  ()
