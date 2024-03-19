(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type location = {
  address : string prop option; [@option]  (** address *)
  latitude : string prop option; [@option]  (** latitude *)
  longitude : string prop option; [@option]  (** longitude *)
}
[@@deriving yojson_of]
(** location *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_site = {
  description : string prop option; [@option]  (** description *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  location : location list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_site *)

let location ?address ?latitude ?longitude () : location =
  { address; latitude; longitude }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_site ?description ?id ?tags ?tags_all
    ?timeouts ~global_network_id ~location () :
    aws_networkmanager_site =
  {
    description;
    global_network_id;
    id;
    tags;
    tags_all;
    location;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~global_network_id ~location __resource_id =
  let __resource_type = "aws_networkmanager_site" in
  let __resource =
    aws_networkmanager_site ?description ?id ?tags ?tags_all
      ?timeouts ~global_network_id ~location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_site __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
