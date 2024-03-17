(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_device__aws_location = {
  subnet_arn : string option; [@option]  (** subnet_arn *)
  zone : string option; [@option]  (** zone *)
}
[@@deriving yojson_of]
(** aws_networkmanager_device__aws_location *)

type aws_networkmanager_device__location = {
  address : string option; [@option]  (** address *)
  latitude : string option; [@option]  (** latitude *)
  longitude : string option; [@option]  (** longitude *)
}
[@@deriving yojson_of]
(** aws_networkmanager_device__location *)

type aws_networkmanager_device__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_device__timeouts *)

type aws_networkmanager_device = {
  description : string option; [@option]  (** description *)
  global_network_id : string;  (** global_network_id *)
  model : string option; [@option]  (** model *)
  serial_number : string option; [@option]  (** serial_number *)
  site_id : string option; [@option]  (** site_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  vendor : string option; [@option]  (** vendor *)
  aws_location : aws_networkmanager_device__aws_location list;
  location : aws_networkmanager_device__location list;
  timeouts : aws_networkmanager_device__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_device *)

let aws_networkmanager_device ?description ?model ?serial_number
    ?site_id ?tags ?type_ ?vendor ?timeouts ~global_network_id
    ~aws_location ~location __resource_id =
  let __resource_type = "aws_networkmanager_device" in
  let __resource =
    {
      description;
      global_network_id;
      model;
      serial_number;
      site_id;
      tags;
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
