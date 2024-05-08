(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_scram_secret_association = {
  cluster_arn : string prop;
  id : string prop option; [@option]
  secret_arn_list : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_scram_secret_association) -> ()

let yojson_of_aws_msk_scram_secret_association =
  (function
   | {
       cluster_arn = v_cluster_arn;
       id = v_id;
       secret_arn_list = v_secret_arn_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_arn_list then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_secret_arn_list
           in
           let bnd = "secret_arn_list", arg in
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
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_scram_secret_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_scram_secret_association

[@@@deriving.end]

let aws_msk_scram_secret_association ?id ~cluster_arn
    ~secret_arn_list () : aws_msk_scram_secret_association =
  { cluster_arn; id; secret_arn_list }

type t = {
  tf_name : string;
  cluster_arn : string prop;
  id : string prop;
  secret_arn_list : string list prop;
}

let make ?id ~cluster_arn ~secret_arn_list __id =
  let __type = "aws_msk_scram_secret_association" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_arn = Prop.computed __type __id "cluster_arn";
       id = Prop.computed __type __id "id";
       secret_arn_list = Prop.computed __type __id "secret_arn_list";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_scram_secret_association
        (aws_msk_scram_secret_association ?id ~cluster_arn
           ~secret_arn_list ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn ~secret_arn_list __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_arn ~secret_arn_list __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
