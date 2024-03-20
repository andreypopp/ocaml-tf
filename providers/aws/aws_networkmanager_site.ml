(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?tags ?tags_all ?timeouts
    ~global_network_id ~location __id =
  let __type = "aws_networkmanager_site" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_site
        (aws_networkmanager_site ?description ?id ?tags ?tags_all
           ?timeouts ~global_network_id ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~global_network_id ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts
      ~global_network_id ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
