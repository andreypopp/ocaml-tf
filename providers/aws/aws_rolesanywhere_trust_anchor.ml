(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source__source_data = {
  acm_pca_arn : string prop option; [@option]
  x509_certificate_data : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__source_data) -> ()

let yojson_of_source__source_data =
  (function
   | {
       acm_pca_arn = v_acm_pca_arn;
       x509_certificate_data = v_x509_certificate_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_x509_certificate_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "x509_certificate_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_acm_pca_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acm_pca_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__source_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__source_data

[@@@deriving.end]

type source = {
  source_type : string prop;
  source_data : source__source_data list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | { source_type = v_source_type; source_data = v_source_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_data then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source__source_data)
               v_source_data
           in
           let bnd = "source_data", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_type in
         ("source_type", arg) :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type aws_rolesanywhere_trust_anchor = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  source : source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rolesanywhere_trust_anchor) -> ()

let yojson_of_aws_rolesanywhere_trust_anchor =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rolesanywhere_trust_anchor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rolesanywhere_trust_anchor

[@@@deriving.end]

let source__source_data ?acm_pca_arn ?x509_certificate_data () :
    source__source_data =
  { acm_pca_arn; x509_certificate_data }

let source ~source_type ~source_data () : source =
  { source_type; source_data }

let aws_rolesanywhere_trust_anchor ?enabled ?id ?tags ?tags_all ~name
    ~source () : aws_rolesanywhere_trust_anchor =
  { enabled; id; name; tags; tags_all; source }

type t = {
  tf_name : string;
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enabled ?id ?tags ?tags_all ~name ~source __id =
  let __type = "aws_rolesanywhere_trust_anchor" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rolesanywhere_trust_anchor
        (aws_rolesanywhere_trust_anchor ?enabled ?id ?tags ?tags_all
           ~name ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?tags_all ~name ~source
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?tags_all ~name ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
