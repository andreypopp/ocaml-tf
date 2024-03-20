(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_disk = {
  availability_zone : string prop;  (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  size_in_gb : float prop;  (** size_in_gb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk *)

let aws_lightsail_disk ?id ?tags ?tags_all ~availability_zone ~name
    ~size_in_gb () : aws_lightsail_disk =
  { availability_zone; id; name; size_in_gb; tags; tags_all }

type t = {
  arn : string prop;
  availability_zone : string prop;
  created_at : string prop;
  id : string prop;
  name : string prop;
  size_in_gb : float prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~availability_zone ~name ~size_in_gb
    __id =
  let __type = "aws_lightsail_disk" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       size_in_gb = Prop.computed __type __id "size_in_gb";
       support_code = Prop.computed __type __id "support_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_disk
        (aws_lightsail_disk ?id ?tags ?tags_all ~availability_zone
           ~name ~size_in_gb ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~availability_zone ~name
    ~size_in_gb __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~availability_zone ~name ~size_in_gb
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
