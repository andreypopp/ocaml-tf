(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_key_pair = {
  id : string prop option; [@option]
  key_name : string prop option; [@option]
  key_name_prefix : string prop option; [@option]
  public_key : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_key_pair) -> ()

let yojson_of_aws_key_pair =
  (function
   | {
       id = v_id;
       key_name = v_key_name;
       key_name_prefix = v_key_name_prefix;
       public_key = v_public_key;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         match v_key_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_key_pair -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_key_pair

[@@@deriving.end]

let aws_key_pair ?id ?key_name ?key_name_prefix ?tags ?tags_all
    ~public_key () : aws_key_pair =
  { id; key_name; key_name_prefix; public_key; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  fingerprint : string prop;
  id : string prop;
  key_name : string prop;
  key_name_prefix : string prop;
  key_pair_id : string prop;
  key_type : string prop;
  public_key : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?key_name ?key_name_prefix ?tags ?tags_all ~public_key
    __id =
  let __type = "aws_key_pair" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       key_name_prefix = Prop.computed __type __id "key_name_prefix";
       key_pair_id = Prop.computed __type __id "key_pair_id";
       key_type = Prop.computed __type __id "key_type";
       public_key = Prop.computed __type __id "public_key";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_key_pair
        (aws_key_pair ?id ?key_name ?key_name_prefix ?tags ?tags_all
           ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_name ?key_name_prefix ?tags
    ?tags_all ~public_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_name ?key_name_prefix ?tags ?tags_all ~public_key
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
