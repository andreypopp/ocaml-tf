(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?provider_name ?tags ?tags_all ?type_
    ?timeouts ~global_network_id ~site_id ~bandwidth __id =
  let __type = "aws_networkmanager_link" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       provider_name = Prop.computed __type __id "provider_name";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_link
        (aws_networkmanager_link ?description ?id ?provider_name
           ?tags ?tags_all ?type_ ?timeouts ~global_network_id
           ~site_id ~bandwidth ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?provider_name ?tags
    ?tags_all ?type_ ?timeouts ~global_network_id ~site_id ~bandwidth
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?provider_name ?tags ?tags_all ?type_
      ?timeouts ~global_network_id ~site_id ~bandwidth __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
