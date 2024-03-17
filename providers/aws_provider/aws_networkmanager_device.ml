(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_device__aws_location = {
  subnet_arn : string prop option; [@option]  (** subnet_arn *)
  zone : string prop option; [@option]  (** zone *)
}
[@@deriving yojson_of]
(** aws_networkmanager_device__aws_location *)

type aws_networkmanager_device__location = {
  address : string prop option; [@option]  (** address *)
  latitude : string prop option; [@option]  (** latitude *)
  longitude : string prop option; [@option]  (** longitude *)
}
[@@deriving yojson_of]
(** aws_networkmanager_device__location *)

type aws_networkmanager_device__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_device__timeouts *)

type aws_networkmanager_device = {
  description : string prop option; [@option]  (** description *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  model : string prop option; [@option]  (** model *)
  serial_number : string prop option; [@option]  (** serial_number *)
  site_id : string prop option; [@option]  (** site_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  vendor : string prop option; [@option]  (** vendor *)
  aws_location : aws_networkmanager_device__aws_location list;
  location : aws_networkmanager_device__location list;
  timeouts : aws_networkmanager_device__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_device *)

let aws_networkmanager_device ?description ?id ?model ?serial_number
    ?site_id ?tags ?tags_all ?type_ ?vendor ?timeouts
    ~global_network_id ~aws_location ~location __resource_id =
  let __resource_type = "aws_networkmanager_device" in
  let __resource =
    {
      description;
      global_network_id;
      id;
      model;
      serial_number;
      site_id;
      tags;
      tags_all;
      type_;
      vendor;
      aws_location;
      location;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_device __resource);
  ()
