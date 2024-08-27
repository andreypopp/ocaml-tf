(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_ds_record = {
  algorithm : string prop;
  digest : string prop option; [@option]
  digest_type : string prop option; [@option]
  domain : string prop;
  keytag : string prop option; [@option]
  public_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_ds_record) -> ()

let yojson_of_dnsimple_ds_record =
  (function
   | {
       algorithm = v_algorithm;
       digest = v_digest;
       digest_type = v_digest_type;
       domain = v_domain;
       keytag = v_keytag;
       public_key = v_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_keytag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keytag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         match v_digest_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_ds_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_ds_record

[@@@deriving.end]

let dnsimple_ds_record ?digest ?digest_type ?keytag ?public_key
    ~algorithm ~domain () : dnsimple_ds_record =
  { algorithm; digest; digest_type; domain; keytag; public_key }

type t = {
  tf_name : string;
  algorithm : string prop;
  created_at : string prop;
  digest : string prop;
  digest_type : string prop;
  domain : string prop;
  id : float prop;
  keytag : string prop;
  public_key : string prop;
  updated_at : string prop;
}

let make ?digest ?digest_type ?keytag ?public_key ~algorithm ~domain
    __id =
  let __type = "dnsimple_ds_record" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       created_at = Prop.computed __type __id "created_at";
       digest = Prop.computed __type __id "digest";
       digest_type = Prop.computed __type __id "digest_type";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       keytag = Prop.computed __type __id "keytag";
       public_key = Prop.computed __type __id "public_key";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_ds_record
        (dnsimple_ds_record ?digest ?digest_type ?keytag ?public_key
           ~algorithm ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?digest ?digest_type ?keytag ?public_key
    ~algorithm ~domain __id =
  let (r : _ Tf_core.resource) =
    make ?digest ?digest_type ?keytag ?public_key ~algorithm ~domain
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
