(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expose_headers : string prop list option; [@option]
  id : string prop option; [@option]
  max_age_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_rule) -> ()

let yojson_of_cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       expose_headers = v_expose_headers;
       id = v_id;
       max_age_seconds = v_max_age_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_seconds", arg in
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
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_rule

[@@@deriving.end]

type digitalocean_spaces_bucket_cors_configuration = {
  bucket : string prop;
  id : string prop option; [@option]
  region : string prop;
  cors_rule : cors_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket_cors_configuration) -> ()

let yojson_of_digitalocean_spaces_bucket_cors_configuration =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       region = v_region;
       cors_rule = v_cors_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cors_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cors_rule) v_cors_rule
           in
           let bnd = "cors_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_spaces_bucket_cors_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket_cors_configuration

[@@@deriving.end]

let cors_rule ?allowed_headers ?expose_headers ?id ?max_age_seconds
    ~allowed_methods ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    expose_headers;
    id;
    max_age_seconds;
  }

let digitalocean_spaces_bucket_cors_configuration ?id ~bucket ~region
    ~cors_rule () : digitalocean_spaces_bucket_cors_configuration =
  { bucket; id; region; cors_rule }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  region : string prop;
}

let make ?id ~bucket ~region ~cors_rule __id =
  let __type = "digitalocean_spaces_bucket_cors_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket_cors_configuration
        (digitalocean_spaces_bucket_cors_configuration ?id ~bucket
           ~region ~cors_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~region ~cors_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket ~region ~cors_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
