(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connection *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_connection ?connected_link_id ?description ?id
    ?link_id ?tags ?tags_all ?timeouts ~connected_device_id
    ~device_id ~global_network_id () : aws_networkmanager_connection
    =
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

type t = {
  arn : string prop;
  connected_device_id : string prop;
  connected_link_id : string prop;
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?connected_link_id ?description ?id ?link_id
    ?tags ?tags_all ?timeouts ~connected_device_id ~device_id
    ~global_network_id __resource_id =
  let __resource_type = "aws_networkmanager_connection" in
  let __resource =
    aws_networkmanager_connection ?connected_link_id ?description ?id
      ?link_id ?tags ?tags_all ?timeouts ~connected_device_id
      ~device_id ~global_network_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connected_device_id =
         Prop.computed __resource_type __resource_id
           "connected_device_id";
       connected_link_id =
         Prop.computed __resource_type __resource_id
           "connected_link_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       device_id =
         Prop.computed __resource_type __resource_id "device_id";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       link_id =
         Prop.computed __resource_type __resource_id "link_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
