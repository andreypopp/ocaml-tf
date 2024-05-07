(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_acm_certificate = {
  domain : string prop;
  id : string prop option; [@option]
  key_types : string prop list option; [@option]
  most_recent : bool prop option; [@option]
  statuses : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_acm_certificate) -> ()

let yojson_of_aws_acm_certificate =
  (function
   | {
       domain = v_domain;
       id = v_id;
       key_types = v_key_types;
       most_recent = v_most_recent;
       statuses = v_statuses;
       tags = v_tags;
       types = v_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
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
         match v_statuses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "statuses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "key_types", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : aws_acm_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_acm_certificate

[@@@deriving.end]

let aws_acm_certificate ?id ?key_types ?most_recent ?statuses ?tags
    ?types ~domain () : aws_acm_certificate =
  { domain; id; key_types; most_recent; statuses; tags; types }

type t = {
  tf_name : string;
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  domain : string prop;
  id : string prop;
  key_types : string list prop;
  most_recent : bool prop;
  status : string prop;
  statuses : string list prop;
  tags : (string * string) list prop;
  types : string list prop;
}

let make ?id ?key_types ?most_recent ?statuses ?tags ?types ~domain
    __id =
  let __type = "aws_acm_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       key_types = Prop.computed __type __id "key_types";
       most_recent = Prop.computed __type __id "most_recent";
       status = Prop.computed __type __id "status";
       statuses = Prop.computed __type __id "statuses";
       tags = Prop.computed __type __id "tags";
       types = Prop.computed __type __id "types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acm_certificate
        (aws_acm_certificate ?id ?key_types ?most_recent ?statuses
           ?tags ?types ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_types ?most_recent ?statuses ?tags
    ?types ~domain __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_types ?most_recent ?statuses ?tags ?types ~domain
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
