(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters = {
  application : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (function
   | { application = v_application; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_application with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type aws_emr_release_labels = {
  id : string prop option; [@option]
  filters : filters list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_release_labels) -> ()

let yojson_of_aws_emr_release_labels =
  (function
   | { id = v_id; filters = v_filters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filters then bnds
         else
           let arg = (yojson_of_list yojson_of_filters) v_filters in
           let bnd = "filters", arg in
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
    : aws_emr_release_labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_release_labels

[@@@deriving.end]

let filters ?application ?prefix () : filters =
  { application; prefix }

let aws_emr_release_labels ?id ?(filters = []) () :
    aws_emr_release_labels =
  { id; filters }

type t = {
  tf_name : string;
  id : string prop;
  release_labels : string list prop;
}

let make ?id ?(filters = []) __id =
  let __type = "aws_emr_release_labels" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       release_labels = Prop.computed __type __id "release_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_release_labels
        (aws_emr_release_labels ?id ~filters ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(filters = []) __id =
  let (r : _ Tf_core.resource) = make ?id ~filters __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
