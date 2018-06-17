'use strict';

/**
 * Clientesdeserviciosdeproxy.js controller
 *
 * @description: A set of functions called "actions" for managing `Clientesdeserviciosdeproxy`.
 */

module.exports = {

  /**
   * Retrieve clientesdeserviciosdeproxy records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    return strapi.services.clientesdeserviciosdeproxy.fetchAll(ctx.query);
  },

  /**
   * Retrieve a clientesdeserviciosdeproxy record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    if (!ctx.params._id.match(/^[0-9a-fA-F]{24}$/)) {
      return ctx.notFound();
    }

    return strapi.services.clientesdeserviciosdeproxy.fetch(ctx.params);
  },

  /**
   * Count clientesdeserviciosdeproxy records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.clientesdeserviciosdeproxy.count(ctx.query);
  },

  /**
   * Create a/an clientesdeserviciosdeproxy record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.clientesdeserviciosdeproxy.add(ctx.request.body);
  },

  /**
   * Update a/an clientesdeserviciosdeproxy record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.clientesdeserviciosdeproxy.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an clientesdeserviciosdeproxy record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.clientesdeserviciosdeproxy.remove(ctx.params);
  }
};
