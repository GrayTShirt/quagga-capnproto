/*
 * AUTOGENERATED FILE - DO NOT EDIT
 * derived from GPLv2+ sources
 */

/* [] bgpd:1 <> bgp_master->bgp (bgp)*/

static void
_qzc_get_bgp_master_1(struct bgp_master *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{
    struct QZCNodeList nl;
    struct list *list = p->bgp;
    QZCNodeList_ptr cp;
    static const capn_ptr capn_null = {CAPN_NULL};
    size_t i;

    if (list) {
        struct listnode *n = list->head;
        nl.nodes = capn_new_list64(seg, list->count);
        for (i = 0; n && i < list->count; i++) {
            struct bgp *e = (struct bgp *)n->data;
            n = n->next;

            capn_set64(nl.nodes, i, e->qzc_node.nid);
        }
    } else
        nl.nodes.p = capn_null;

    cp = new_QZCNodeList(seg);
    write_QZCNodeList(&nl, cp);
    rep->data = cp.p;
    rep->datatype = 0x9bb91c45a95a581d;
}

/* [] bgpd:1 <> bgp_master->bgp (bgp)*/

static void
_qzc_create_bgp_master_1(struct bgp_master *p,
        struct QZCCreateReq *req, struct QZCCreateRep *rep,
        struct capn_segment *seg)
{
    struct bgp *ret = NULL;
    switch (req->datatype) {
    case 0xfd0316f1800ae916:
      {
        as_t as = qcapn_BGP_get_as(req->data);
        ret = bgp_create_api(p, as);
      }
    }
    if (ret)
        rep->newnid = ret->qzc_node.nid;
}

/* [3dd958b139b0da5d] bgpd <> bgp_master */
static void
_qzc_get_bgp_master(void *entity, struct QZCGetReq *req, struct QZCGetRep *rep,
			struct capn_segment *seg)
{
    struct bgp_master *p;
    p = (struct bgp_master *)entity;
    switch (req->elem) {
    case 1:
        _qzc_get_bgp_master_1(p, req, rep, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_createchild_bgp_master(void *entity,
			struct QZCCreateReq *req, struct QZCCreateRep *rep,
			struct capn_segment *seg)
{
    struct bgp_master *p;
    p = (struct bgp_master *)entity;
    switch (req->parentelem) {
    case 1:
        _qzc_create_bgp_master_1(p, req, rep, seg);
        return;
    default:
        return;
    }
}

struct qzc_nodetype qzc_t_bgp_master = {
	.tid = 0x3dd958b139b0da5d,
	.node_member_offset = (ptrdiff_t)offsetof(struct bgp_master, qzc_node),
	.get = _qzc_get_bgp_master,
	.createchild = _qzc_createchild_bgp_master,
};
/* WKN 37b64fdb20888a50 */
static uint64_t _wknresolve_37b64fdb20888a50(void)
{
    struct bgp_master *elem = bm;
    if (!elem)
        return 0;
    return elem->qzc_node.nid;
}
static struct qzc_wkn _wkn_37b64fdb20888a50 = {
    .wid = 0x37b64fdb20888a50,
    .resolve = _wknresolve_37b64fdb20888a50,
};
static void _wkninit_37b64fdb20888a50(void) __attribute__ ((constructor));
static void _wkninit_37b64fdb20888a50(void)
{
    qzc_wkn_reg(&_wkn_37b64fdb20888a50);
};

/* [] bgp:1 <> bgp */

static void
_qzc_get_bgp_1(struct bgp *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{

    if (req->ctxtype != 0)
        /* error */
        return;


    rep->data = qcapn_new_BGP(seg);
    qcapn_BGP_write(p, rep->data);
    rep->datatype = 0xfd0316f1800ae916;
}

/* [] bgp:2 <> bgp->peer (peer)*/

static void
_qzc_get_bgp_2(struct bgp *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{
    struct QZCNodeList nl;
    struct list *list = p->peer;
    QZCNodeList_ptr cp;
    static const capn_ptr capn_null = {CAPN_NULL};
    size_t i;

    if (list) {
        struct listnode *n = list->head;
        nl.nodes = capn_new_list64(seg, list->count);
        for (i = 0; n && i < list->count; i++) {
            struct peer *e = (struct peer *)n->data;
            n = n->next;

            capn_set64(nl.nodes, i, e->qzc_node.nid);
        }
    } else
        nl.nodes.p = capn_null;

    cp = new_QZCNodeList(seg);
    write_QZCNodeList(&nl, cp);
    rep->data = cp.p;
    rep->datatype = 0x9bb91c45a95a581d;
}

/* [] bgp:3 <> bgp->vrfs (bgp_vrf)*/

static void
_qzc_get_bgp_3(struct bgp *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{
    struct QZCNodeList nl;
    struct list *list = p->vrfs;
    QZCNodeList_ptr cp;
    static const capn_ptr capn_null = {CAPN_NULL};
    size_t i;

    if (list) {
        struct listnode *n = list->head;
        nl.nodes = capn_new_list64(seg, list->count);
        for (i = 0; n && i < list->count; i++) {
            struct bgp_vrf *e = (struct bgp_vrf *)n->data;
            n = n->next;

            capn_set64(nl.nodes, i, e->qzc_node.nid);
        }
    } else
        nl.nodes.p = capn_null;

    cp = new_QZCNodeList(seg);
    write_QZCNodeList(&nl, cp);
    rep->data = cp.p;
    rep->datatype = 0x9bb91c45a95a581d;
}

/* [] bgp:2 <> bgp->peer (peer)*/

static void
_qzc_create_bgp_2(struct bgp *p,
        struct QZCCreateReq *req, struct QZCCreateRep *rep,
        struct capn_segment *seg)
{
    struct peer *ret = NULL;
    switch (req->datatype) {
    case 0xd1f1619cff93fcb9:
      {
        const char * host = qcapn_BGPPeer_get_host(req->data);
        as_t as = qcapn_BGPPeer_get_as(req->data);
        ret = peer_create_api(p, host, as);
      }
    }
    if (ret)
        rep->newnid = ret->qzc_node.nid;
}

/* [] bgp:3 <> bgp->vrfs (bgp_vrf)*/

static void
_qzc_create_bgp_3(struct bgp *p,
        struct QZCCreateReq *req, struct QZCCreateRep *rep,
        struct capn_segment *seg)
{
    struct bgp_vrf *ret = NULL;
    switch (req->datatype) {
    case 0x912c4b0c412022b1:
      {
        struct prefix_rd outbound_rd = qcapn_BGPVRF_get_outbound_rd(req->data);
        ret = bgp_vrf_create(p, &outbound_rd);
      }
    }
    if (ret)
        rep->newnid = ret->qzc_node.nid;
}

/* [] bgp:1 <> bgp */

static void
_qzc_set_bgp_1(struct bgp *p,
        struct QZCSetReq *req,
        struct capn_segment *seg)
{

    if (req->ctxtype != 0)
        /* error */
        return;


    if (req->datatype != 0xfd0316f1800ae916)
        /* error */
        return;

    qcapn_BGP_set(p, req->data);
}

/* [3fafaa5ff15d4317] bgp <> bgp */
static void
_qzc_get_bgp(void *entity, struct QZCGetReq *req, struct QZCGetRep *rep,
			struct capn_segment *seg)
{
    struct bgp *p;
    p = (struct bgp *)entity;
    switch (req->elem) {
    case 1:
        _qzc_get_bgp_1(p, req, rep, seg);
        return;
    case 2:
        _qzc_get_bgp_2(p, req, rep, seg);
        return;
    case 3:
        _qzc_get_bgp_3(p, req, rep, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_createchild_bgp(void *entity,
			struct QZCCreateReq *req, struct QZCCreateRep *rep,
			struct capn_segment *seg)
{
    struct bgp *p;
    p = (struct bgp *)entity;
    switch (req->parentelem) {
    case 2:
        _qzc_create_bgp_2(p, req, rep, seg);
        return;
    case 3:
        _qzc_create_bgp_3(p, req, rep, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_set_bgp(void *entity,
		    struct QZCSetReq *req,
		    struct capn_segment *seg)
{
    struct bgp *p;
    p = (struct bgp *)entity;
    switch (req->elem) {
    case 1:
        _qzc_set_bgp_1(p, req, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_destroy_bgp(void *entity,
			 struct QZCDelReq *req,
			 struct capn_segment *seg)
{
    struct bgp *p;
    p = (struct bgp *)entity;
    bgp_delete(p);
}

struct qzc_nodetype qzc_t_bgp = {
	.tid = 0x3fafaa5ff15d4317,
	.node_member_offset = (ptrdiff_t)offsetof(struct bgp, qzc_node),
	.get = _qzc_get_bgp,
	.createchild = _qzc_createchild_bgp,
	.set = _qzc_set_bgp,
	.destroy = _qzc_destroy_bgp,
};
/* WKN ee130f407472b15a */
static uint64_t _wknresolve_ee130f407472b15a(void)
{
    struct bgp *elem = bgp_get_default();
    if (!elem)
        return 0;
    return elem->qzc_node.nid;
}
static struct qzc_wkn _wkn_ee130f407472b15a = {
    .wid = 0xee130f407472b15a,
    .resolve = _wknresolve_ee130f407472b15a,
};
static void _wkninit_ee130f407472b15a(void) __attribute__ ((constructor));
static void _wkninit_ee130f407472b15a(void)
{
    qzc_wkn_reg(&_wkn_ee130f407472b15a);
};

/* [] bgp_peer:2 <> peer */

static void
_qzc_get_peer_2(struct peer *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{

    if (req->ctxtype != 0)
        /* error */
        return;


    rep->data = qcapn_new_BGPPeer(seg);
    qcapn_BGPPeer_write(p, rep->data);
    rep->datatype = 0xd1f1619cff93fcb9;
}

/* [] bgp_peer:3 <> peer */

static void
_qzc_get_peer_3(struct peer *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{
    afi_t afi;
    safi_t safi;

    if (req->ctxtype != 0x9af9aec34821d76a)
        /* error */
        return;

    afi = qcapn_AfiSafiKey_get_afi (req->ctxdata);
    safi = qcapn_AfiSafiKey_get_safi (req->ctxdata);

    rep->data = qcapn_new_BGPPeerAfiSafi(seg);
    qcapn_BGPPeerAfiSafi_write(p, rep->data, afi, safi);
    rep->datatype = 0x8a3b3cd8d134cad1;
}

/* [] bgp_peer:2 <> peer */

static void
_qzc_set_peer_2(struct peer *p,
        struct QZCSetReq *req,
        struct capn_segment *seg)
{

    if (req->ctxtype != 0)
        /* error */
        return;


    if (req->datatype != 0xd1f1619cff93fcb9)
        /* error */
        return;

    qcapn_BGPPeer_set(p, req->data);
}

/* [] bgp_peer:3 <> peer */

static void
_qzc_set_peer_3(struct peer *p,
        struct QZCSetReq *req,
        struct capn_segment *seg)
{
    afi_t afi;
    safi_t safi;

    if (req->ctxtype != 0x9af9aec34821d76a)
        /* error */
        return;

    afi = qcapn_AfiSafiKey_get_afi (req->ctxdata);
    safi = qcapn_AfiSafiKey_get_safi (req->ctxdata);

    if (req->datatype != 0x8a3b3cd8d134cad1)
        /* error */
        return;

    qcapn_BGPPeerAfiSafi_set(p, req->data, afi, safi);
}

/* [b7f3d8126eeb7a2b] bgp_peer <> peer */
static void
_qzc_get_peer(void *entity, struct QZCGetReq *req, struct QZCGetRep *rep,
			struct capn_segment *seg)
{
    struct peer *p;
    p = (struct peer *)entity;
    switch (req->elem) {
    case 2:
        _qzc_get_peer_2(p, req, rep, seg);
        return;
    case 3:
        _qzc_get_peer_3(p, req, rep, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_set_peer(void *entity,
		    struct QZCSetReq *req,
		    struct capn_segment *seg)
{
    struct peer *p;
    p = (struct peer *)entity;
    switch (req->elem) {
    case 2:
        _qzc_set_peer_2(p, req, seg);
        return;
    case 3:
        _qzc_set_peer_3(p, req, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_destroy_peer(void *entity,
			 struct QZCDelReq *req,
			 struct capn_segment *seg)
{
    struct peer *p;
    p = (struct peer *)entity;
    peer_delete(p);
}

struct qzc_nodetype qzc_t_peer = {
	.tid = 0xb7f3d8126eeb7a2b,
	.node_member_offset = (ptrdiff_t)offsetof(struct peer, qzc_node),
	.get = _qzc_get_peer,
	.set = _qzc_set_peer,
	.destroy = _qzc_destroy_peer,
};
/* [] bgp_vrf:1 <> bgp_vrf */

static void
_qzc_get_bgp_vrf_1(struct bgp_vrf *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{

    if (req->ctxtype != 0)
        /* error */
        return;


    rep->data = qcapn_new_BGPVRF(seg);
    qcapn_BGPVRF_write(p, rep->data);
    rep->datatype = 0x912c4b0c412022b1;
}

static struct bgp_node * qcap_iter_bgp_vrf_rib(struct bgp_table *table,
        const struct tbliter_v4 *prev_iter,
        struct tbliter_v4 *next_iter,
        bool *hasnext)
{
    struct bgp_node *bn;
    if (!prev_iter) {
        bn = bgp_table_top_nolock (table);
    } else {
        bn = bgp_table_get_next (table, (struct prefix *)&prev_iter->prefix);
        if (bn)
            bgp_unlock_node(bn);
    }
    if (bn) {
        prefix_copy ((struct prefix *)&next_iter->prefix, &bn->p);
        *hasnext = true;
    } else
        *hasnext = false;
    return bn;
}


/* Iterated GET bgp_vrf:2 <> bgp_vrf->rib ()*/

static void
_qzc_get_bgp_vrf_2(struct bgp_vrf *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{
    struct bgp_table * table;
    struct tbliter_v4 iter, nextiter;
    const struct tbliter_v4 *iterptr;
    afi_t afi;

    if (req->ctxtype != 0xac25a73c3ff455c0)
        /* error */
        return;

    afi = qcapn_AfiKey_get_afi (req->ctxdata);
    table = p->rib[afi];

    if (req->itertype == 0xeb8ab4f58b7753ee) {
        qcapn_VRFTableIter_read(&iter, req->iterdata);
        iterptr = &iter;
    } else if (req->itertype == 0) {
        iterptr = NULL;
    } else {
        /* error */
        return;
    }

    bool hasnext = false;
    struct bgp_node * val = qcap_iter_bgp_vrf_rib(table, iterptr, &nextiter, &hasnext);

    if (hasnext) {
        rep->itertype = 0xeb8ab4f58b7753ee;
        rep->nextiter = qcapn_new_VRFTableIter(seg);
        qcapn_VRFTableIter_write(&nextiter, rep->nextiter);
    } else
        rep->itertype = 0;

    rep->datatype = 0;
    if (val) {
        struct bgp_api_route *outptr;
        struct bgp_api_route tmpval;
        if (!bgp_api_route_get(&tmpval, val))
            return;
        outptr = &tmpval;
        rep->data = qcapn_new_BGPVRFRoute(seg);
        qcapn_BGPVRFRoute_write(outptr, rep->data);
        rep->datatype = 0x8f217eb4bad6c06f;
    }
}



static struct bgp_node * qcap_iter_bgp_vrf_route(struct bgp_table *table,
        const struct tbliter_v4 *prev_iter,
        struct tbliter_v4 *next_iter,
        bool *hasnext)
{
    struct bgp_node *bn;
    if (!prev_iter) {
        bn = bgp_table_top_nolock (table);
    } else {
        bn = bgp_table_get_next (table, (struct prefix *)&prev_iter->prefix);
        if (bn)
            bgp_unlock_node(bn);
    }
    if (bn) {
        prefix_copy ((struct prefix *)&next_iter->prefix, &bn->p);
        *hasnext = true;
    } else
        *hasnext = false;
    return bn;
}


/* Iterated GET bgp_vrf:3 <> bgp_vrf->route ()*/

static void
_qzc_get_bgp_vrf_3(struct bgp_vrf *p,
        struct QZCGetReq *req, struct QZCGetRep *rep,
        struct capn_segment *seg)
{
    struct bgp_table * table;
    struct tbliter_v4 iter, nextiter;
    const struct tbliter_v4 *iterptr;
    afi_t afi;

    if (req->ctxtype != 0xac25a73c3ff455c0)
        /* error */
        return;

    afi = qcapn_AfiKey_get_afi (req->ctxdata);
    table = p->route[afi];

    if (req->itertype == 0xeb8ab4f58b7753ee) {
        qcapn_VRFTableIter_read(&iter, req->iterdata);
        iterptr = &iter;
    } else if (req->itertype == 0) {
        iterptr = NULL;
    } else {
        /* error */
        return;
    }

    bool hasnext = false;
    struct bgp_node * val = qcap_iter_bgp_vrf_route(table, iterptr, &nextiter, &hasnext);

    if (hasnext) {
        rep->itertype = 0xeb8ab4f58b7753ee;
        rep->nextiter = qcapn_new_VRFTableIter(seg);
        qcapn_VRFTableIter_write(&nextiter, rep->nextiter);
    } else
        rep->itertype = 0;

    rep->datatype = 0;
    if (val) {
        struct bgp_api_route *outptr;
        struct bgp_api_route tmpval;
        if (!bgp_api_static_get(&tmpval, val))
            return;
        outptr = &tmpval;
        rep->data = qcapn_new_BGPVRFRoute(seg);
        qcapn_BGPVRFRoute_write(outptr, rep->data);
        rep->datatype = 0x8f217eb4bad6c06f;
    }
}



/* [] bgp_vrf:1 <> bgp_vrf */

static void
_qzc_set_bgp_vrf_1(struct bgp_vrf *p,
        struct QZCSetReq *req,
        struct capn_segment *seg)
{

    if (req->ctxtype != 0)
        /* error */
        return;


    if (req->datatype != 0x912c4b0c412022b1)
        /* error */
        return;

    qcapn_BGPVRF_set(p, req->data);
}

/* Iterated item SET bgp_vrf:3 <> bgp_vrf-> ()*/

static void
_qzc_set_bgp_vrf_3(struct bgp_vrf *p,
        struct QZCSetReq *req,
        struct capn_segment *seg)
{
    afi_t afi;

    if (req->ctxtype != 0xac25a73c3ff455c0)
        /* error */
        return;

    afi = qcapn_AfiKey_get_afi (req->ctxdata);

    if (req->datatype != 0x8f217eb4bad6c06f)
        /* error */
        return;

    struct bgp_api_route data;
    qcapn_BGPVRFRoute_read(&data, req->data);

    bgp_vrf_static_set(p, afi, &data);
}



/* Iterated item SET bgp_vrf:3 <> bgp_vrf-> ()*/

static void
_qzc_unset_bgp_vrf_3(struct bgp_vrf *p,
        struct QZCSetReq *req,
        struct capn_segment *seg)
{
    afi_t afi;

    if (req->ctxtype != 0xac25a73c3ff455c0)
        /* error */
        return;

    afi = qcapn_AfiKey_get_afi (req->ctxdata);

    if (req->datatype != 0x8f217eb4bad6c06f)
        /* error */
        return;

    struct bgp_api_route data;
    qcapn_BGPVRFRoute_read(&data, req->data);

    bgp_vrf_static_unset(p, afi, &data);
}



/* [cda67afc021c23cf] bgp_vrf <> bgp_vrf */
static void
_qzc_get_bgp_vrf(void *entity, struct QZCGetReq *req, struct QZCGetRep *rep,
			struct capn_segment *seg)
{
    struct bgp_vrf *p;
    p = (struct bgp_vrf *)entity;
    switch (req->elem) {
    case 1:
        _qzc_get_bgp_vrf_1(p, req, rep, seg);
        return;
    case 2:
        _qzc_get_bgp_vrf_2(p, req, rep, seg);
        return;
    case 3:
        _qzc_get_bgp_vrf_3(p, req, rep, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_set_bgp_vrf(void *entity,
		    struct QZCSetReq *req,
		    struct capn_segment *seg)
{
    struct bgp_vrf *p;
    p = (struct bgp_vrf *)entity;
    switch (req->elem) {
    case 1:
        _qzc_set_bgp_vrf_1(p, req, seg);
        return;
    case 3:
        _qzc_set_bgp_vrf_3(p, req, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_unset_bgp_vrf(void *entity,
		    struct QZCSetReq *req,
		    struct capn_segment *seg)
{
    struct bgp_vrf *p;
    p = (struct bgp_vrf *)entity;
    switch (req->elem) {
    case 3:
        _qzc_unset_bgp_vrf_3(p, req, seg);
        return;
    default:
        return;
    }
}
static void
_qzc_destroy_bgp_vrf(void *entity,
			 struct QZCDelReq *req,
			 struct capn_segment *seg)
{
    struct bgp_vrf *p;
    p = (struct bgp_vrf *)entity;
    bgp_vrf_delete(p);
}

struct qzc_nodetype qzc_t_bgp_vrf = {
	.tid = 0xcda67afc021c23cf,
	.node_member_offset = (ptrdiff_t)offsetof(struct bgp_vrf, qzc_node),
	.get = _qzc_get_bgp_vrf,
	.set = _qzc_set_bgp_vrf,
	.unset = _qzc_unset_bgp_vrf,
	.destroy = _qzc_destroy_bgp_vrf,
};