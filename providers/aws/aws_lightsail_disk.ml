(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_disk = {
  availability_zone : string prop;
  id : string prop option; [@option]
  name : string prop;
  size_in_gb : float prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_disk) -> ()

let yojson_of_aws_lightsail_disk =
  (function
   | {
       availability_zone = v_availability_zone;
       id = v_id;
       name = v_name;
       size_in_gb = v_size_in_gb;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gb in
         ("size_in_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_disk

[@@@deriving.end]

let aws_lightsail_disk ?id ?tags ?tags_all ~availability_zone ~name
    ~size_in_gb () : aws_lightsail_disk =
  { availability_zone; id; name; size_in_gb; tags; tags_all }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
