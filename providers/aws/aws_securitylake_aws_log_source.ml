(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source = {
  accounts : string prop list option; [@option]
  regions : string prop list;
  source_name : string prop;
  source_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       accounts = v_accounts;
       regions = v_regions;
       source_name = v_source_name;
       source_version = v_source_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_name in
         ("source_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_regions
         in
         ("regions", arg) :: bnds
       in
       let bnds =
         match v_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accounts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type aws_securitylake_aws_log_source = { source : source list }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securitylake_aws_log_source) -> ()

let yojson_of_aws_securitylake_aws_log_source =
  (function
   | { source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_source v_source in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : aws_securitylake_aws_log_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securitylake_aws_log_source

[@@@deriving.end]

let source ?accounts ?source_version ~regions ~source_name () :
    source =
  { accounts; regions; source_name; source_version }

let aws_securitylake_aws_log_source ?(source = []) () :
    aws_securitylake_aws_log_source =
  { source }

type t = { id : string prop }

let make ?(source = []) __id =
  let __type = "aws_securitylake_aws_log_source" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_aws_log_source
        (aws_securitylake_aws_log_source ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?(source = []) __id =
  let (r : _ Tf_core.resource) = make ~source __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
