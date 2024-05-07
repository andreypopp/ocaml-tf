(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_assets = {
  arn : string prop;
  host_id_filter : string prop list option; [@option]
  id : string prop option; [@option]
  status_id_filter : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_assets) -> ()

let yojson_of_aws_outposts_assets =
  (function
   | {
       arn = v_arn;
       host_id_filter = v_host_id_filter;
       id = v_id;
       status_id_filter = v_status_id_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status_id_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "status_id_filter", arg in
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
         match v_host_id_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "host_id_filter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_outposts_assets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_assets

[@@@deriving.end]

let aws_outposts_assets ?host_id_filter ?id ?status_id_filter ~arn ()
    : aws_outposts_assets =
  { arn; host_id_filter; id; status_id_filter }

type t = {
  tf_name : string;
  arn : string prop;
  asset_ids : string list prop;
  host_id_filter : string list prop;
  id : string prop;
  status_id_filter : string list prop;
}

let make ?host_id_filter ?id ?status_id_filter ~arn __id =
  let __type = "aws_outposts_assets" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       asset_ids = Prop.computed __type __id "asset_ids";
       host_id_filter = Prop.computed __type __id "host_id_filter";
       id = Prop.computed __type __id "id";
       status_id_filter =
         Prop.computed __type __id "status_id_filter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_outposts_assets
        (aws_outposts_assets ?host_id_filter ?id ?status_id_filter
           ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?host_id_filter ?id ?status_id_filter ~arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?host_id_filter ?id ?status_id_filter ~arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
