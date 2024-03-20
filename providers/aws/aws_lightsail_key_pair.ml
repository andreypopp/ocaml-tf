(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_key_pair = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  pgp_key : string prop option; [@option]
  public_key : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_key_pair) -> ()

let yojson_of_aws_lightsail_key_pair =
  (function
   | {
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       pgp_key = v_pgp_key;
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
         match v_public_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pgp_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pgp_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_lightsail_key_pair -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_key_pair

[@@@deriving.end]

let aws_lightsail_key_pair ?id ?name ?name_prefix ?pgp_key
    ?public_key ?tags ?tags_all () : aws_lightsail_key_pair =
  { id; name; name_prefix; pgp_key; public_key; tags; tags_all }

type t = {
  arn : string prop;
  encrypted_fingerprint : string prop;
  encrypted_private_key : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  pgp_key : string prop;
  private_key : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?name_prefix ?pgp_key ?public_key ?tags ?tags_all
    __id =
  let __type = "aws_lightsail_key_pair" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       encrypted_fingerprint =
         Prop.computed __type __id "encrypted_fingerprint";
       encrypted_private_key =
         Prop.computed __type __id "encrypted_private_key";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       pgp_key = Prop.computed __type __id "pgp_key";
       private_key = Prop.computed __type __id "private_key";
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
      yojson_of_aws_lightsail_key_pair
        (aws_lightsail_key_pair ?id ?name ?name_prefix ?pgp_key
           ?public_key ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?pgp_key ?public_key
    ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?pgp_key ?public_key ?tags ?tags_all
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
