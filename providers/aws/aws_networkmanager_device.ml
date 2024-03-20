(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location = {
  subnet_arn : string prop option; [@option]  (** subnet_arn *)
  zone : string prop option; [@option]  (** zone *)
}
[@@deriving yojson_of]
(** aws_location *)

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
  aws_location : aws_location list;
  location : location list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_device *)

let aws_location ?subnet_arn ?zone () : aws_location =
  { subnet_arn; zone }

let location ?address ?latitude ?longitude () : location =
  { address; latitude; longitude }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_device ?description ?id ?model ?serial_number
    ?site_id ?tags ?tags_all ?type_ ?vendor ?timeouts
    ~global_network_id ~aws_location ~location () :
    aws_networkmanager_device =
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

type t = {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  model : string prop;
  serial_number : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  vendor : string prop;
}

let make ?description ?id ?model ?serial_number ?site_id ?tags
    ?tags_all ?type_ ?vendor ?timeouts ~global_network_id
    ~aws_location ~location __id =
  let __type = "aws_networkmanager_device" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       model = Prop.computed __type __id "model";
       serial_number = Prop.computed __type __id "serial_number";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       vendor = Prop.computed __type __id "vendor";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_device
        (aws_networkmanager_device ?description ?id ?model
           ?serial_number ?site_id ?tags ?tags_all ?type_ ?vendor
           ?timeouts ~global_network_id ~aws_location ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?model ?serial_number
    ?site_id ?tags ?tags_all ?type_ ?vendor ?timeouts
    ~global_network_id ~aws_location ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?model ?serial_number ?site_id ?tags
      ?tags_all ?type_ ?vendor ?timeouts ~global_network_id
      ~aws_location ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
