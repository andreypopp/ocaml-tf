(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type bandwidth = {
  download_speed : float prop option; [@option]
      (** download_speed *)
  upload_speed : float prop option; [@option]  (** upload_speed *)
}
[@@deriving yojson_of]
(** bandwidth *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  bandwidth : bandwidth list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_link *)

let bandwidth ?download_speed ?upload_speed () : bandwidth =
  { download_speed; upload_speed }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_link ?description ?id ?provider_name ?tags
    ?tags_all ?type_ ?timeouts ~global_network_id ~site_id ~bandwidth
    () : aws_networkmanager_link =
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

type t = {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  provider_name : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?description ?id ?provider_name ?tags
    ?tags_all ?type_ ?timeouts ~global_network_id ~site_id ~bandwidth
    __resource_id =
  let __resource_type = "aws_networkmanager_link" in
  let __resource =
    aws_networkmanager_link ?description ?id ?provider_name ?tags
      ?tags_all ?type_ ?timeouts ~global_network_id ~site_id
      ~bandwidth ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_link __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       provider_name =
         Prop.computed __resource_type __resource_id "provider_name";
       site_id =
         Prop.computed __resource_type __resource_id "site_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
