(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket_objects = {
  bucket : string prop;
  delimiter : string prop option; [@option]
  encoding_type : string prop option; [@option]
  id : string prop option; [@option]
  max_keys : float prop option; [@option]
  prefix : string prop option; [@option]
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket_objects) -> ()

let yojson_of_digitalocean_spaces_bucket_objects =
  (function
   | {
       bucket = v_bucket;
       delimiter = v_delimiter;
       encoding_type = v_encoding_type;
       id = v_id;
       max_keys = v_max_keys;
       prefix = v_prefix;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_keys", arg in
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
       let bnds =
         match v_encoding_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_spaces_bucket_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket_objects

[@@@deriving.end]

let digitalocean_spaces_bucket_objects ?delimiter ?encoding_type ?id
    ?max_keys ?prefix ~bucket ~region () :
    digitalocean_spaces_bucket_objects =
  { bucket; delimiter; encoding_type; id; max_keys; prefix; region }

type t = {
  bucket : string prop;
  common_prefixes : string list prop;
  delimiter : string prop;
  encoding_type : string prop;
  id : string prop;
  keys : string list prop;
  max_keys : float prop;
  owners : string list prop;
  prefix : string prop;
  region : string prop;
}

let make ?delimiter ?encoding_type ?id ?max_keys ?prefix ~bucket
    ~region __id =
  let __type = "digitalocean_spaces_bucket_objects" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       common_prefixes = Prop.computed __type __id "common_prefixes";
       delimiter = Prop.computed __type __id "delimiter";
       encoding_type = Prop.computed __type __id "encoding_type";
       id = Prop.computed __type __id "id";
       keys = Prop.computed __type __id "keys";
       max_keys = Prop.computed __type __id "max_keys";
       owners = Prop.computed __type __id "owners";
       prefix = Prop.computed __type __id "prefix";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket_objects
        (digitalocean_spaces_bucket_objects ?delimiter ?encoding_type
           ?id ?max_keys ?prefix ~bucket ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?delimiter ?encoding_type ?id ?max_keys
    ?prefix ~bucket ~region __id =
  let (r : _ Tf_core.resource) =
    make ?delimiter ?encoding_type ?id ?max_keys ?prefix ~bucket
      ~region __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
